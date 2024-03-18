import threading
import time

# Global flag to control the timer thread
running = False


def timer_thread():
    global running
    start_time = time.time()
    lap_time = start_time

    while running:
        current_time = time.time()
        elapsed_time = current_time - start_time
        print(f"\rElapsed Time: {format_time(elapsed_time)}", end="")
        time.sleep(0.1)  # Update the timer every 0.1 seconds


def format_time(seconds):
    """Formats time in seconds to hours:minutes:seconds"""
    hours = int(seconds // 3600)
    minutes = int((seconds % 3600) // 60)
    seconds = seconds % 60
    return f"{hours:02d}:{minutes:02d}:{seconds:05.2f}"


def start_stopwatch():
    global running
    running = True
    thread = threading.Thread(target=timer_thread)
    thread.start()

    print("Stopwatch started. Press 'L' to lap, 'S' to stop.\n")
    start_time = time.time()
    lap_time = start_time

    try:
        while True:
            input_char = input().upper()
            current_time = time.time()
            if input_char == "L":
                lap_duration = current_time - lap_time
                total_duration = current_time - start_time
                print(
                    f"\nLap: {format_time(lap_duration)} Total: {format_time(total_duration)}"
                )
                lap_time = current_time
            elif input_char == "S":
                running = False
                total_duration = current_time - start_time
                print(f"\nStopwatch stopped. Total time: {format_time(total_duration)}")
                break
    except KeyboardInterrupt:
        # Handle Ctrl+C gracefully
        running = False
        print("\nStopwatch stopped.")
        total_duration = time.time() - start_time
        print(f"Total time: {format_time(total_duration)}")

    thread.join()


if __name__ == "__main__":
    start_stopwatch()
