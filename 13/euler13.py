def main():
	numbers = map(int, open("numbers.txt").readlines())
	print(str(sum(numbers))[:10])

if __name__ == "__main__":
	main()
