import argparse

parser = argparse.ArgumentParser()

parser.add_argument("-t", "--title")

args = parser.parse_args()

if args.title is not None:
    print(args.title)
else:
    print("no cigar")
