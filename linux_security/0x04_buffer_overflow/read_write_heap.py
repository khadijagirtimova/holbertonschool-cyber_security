#!/usr/bin/env python3


import sys

def main():
    """Main function."""
    if len(sys.argv) != 4:
        print("Usage: read_write_heap.py pid search_string replace_string")
        sys.exit(1)
    
    pid = sys.argv[1]
    search = sys.argv[2]
    replace = sys.argv[3]
    
    # Validate inputs
    try:
        int(pid)
    except:
        print("Error: Invalid PID")
        sys.exit(1)
    
    if len(replace) > len(search):
        print("Error: replacement string is longer")
        sys.exit(1)
    
    # Find heap addresses
    heap_start = None
    heap_end = None
    
    with open(f"/proc/{pid}/maps", "r") as f:
        for line in f:
            if "[heap]" in line:
                addrs = line.split()[0]
                heap_start, heap_end = addrs.split('-')
                heap_start = int(heap_start, 16)
                heap_end = int(heap_end, 16)
                break
    
    if not heap_start:
        print("Error: heap not found")
        sys.exit(1)
    
    print(f"Heap found: 0x{heap_start:x} - 0x{heap_end:x}")
    
    # Replace string in heap
    search_bytes = search.encode()
    replace_bytes = replace.encode().ljust(len(search_bytes), b'\x00')
    
    with open(f"/proc/{pid}/mem", "r+b") as mem:
        mem.seek(heap_start)
        heap_data = mem.read(heap_end - heap_start)
        
        pos = 0
        while True:
            pos = heap_data.find(search_bytes, pos)
            if pos == -1:
                break
            mem.seek(heap_start + pos)
            mem.write(replace_bytes)
            print(f"Replaced at 0x{heap_start + pos:x}")
            pos += 1

if __name__ == "__main__":
    main()
