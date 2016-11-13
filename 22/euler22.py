import json

def score(name):
	return sum([ord(c) - 64 for c in name])

def main():
	file = open("names.txt")
	names = sorted(json.loads("[" + file.read() + "]"))
	print(sum(score(name) * (p+1) for p, name in enumerate(names)))

if __name__ == "__main__":
	main()
