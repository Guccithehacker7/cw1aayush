#!/usr/bin/env python3

import socket
import threading
import tkinter as tk
from tkinter import messagebox, scrolledtext

# Watermark
WATERMARK = "--ayush"

# Scan function to check a single port
def scan_port(ip, port, output_box):
    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.settimeout(1)
        result = s.connect_ex((ip, port))
        s.close()
        if result == 0:
            output_box.insert(tk.END, f"[+] Port {port} is OPEN on {ip}\n")
    except Exception:
        pass

# Worker thread to scan multiple ports
def start_scan(ip, port_range, output_box):
    output_box.insert(tk.END, f"\n🔎 Scanning IP: {ip}\n")
    for port in port_range:
        thread = threading.Thread(target=scan_port, args=(ip, port, output_box))
        thread.start()

# Handle GUI Scan Button
def scan_button_handler(ip_entry, port_entry, output_box):
    ip = ip_entry.get()
    ports = port_entry.get()
    output_box.delete('1.0', tk.END)

    try:
        port_start, port_end = map(int, ports.split("-"))
    except:
        messagebox.showerror("Invalid Port Range", "Enter ports like 20-100")
        return

    output_box.insert(tk.END, f"🛡️  AayushNmap GUI Scanner\n")
    output_box.insert(tk.END, f"Target IP: {ip}\nPort Range: {port_start}-{port_end}\nWatermark: {WATERMARK}\n")
    start_scan(ip, range(port_start, port_end + 1), output_box)

# Setup the GUI
def setup_gui():
    window = tk.Tk()
    window.title("AayushNmap - Python GUI Port Scanner")

    tk.Label(window, text="Target IP:").grid(row=0, column=0, padx=5, pady=5, sticky='e')
    ip_entry = tk.Entry(window, width=30)
    ip_entry.grid(row=0, column=1, padx=5, pady=5)

    tk.Label(window, text="Port Range (e.g., 20-100):").grid(row=1, column=0, padx=5, pady=5, sticky='e')
    port_entry = tk.Entry(window, width=30)
    port_entry.grid(row=1, column=1, padx=5, pady=5)

    scan_button = tk.Button(window, text="Start Scan", width=15,
                            command=lambda: scan_button_handler(ip_entry, port_entry, output_box))
    scan_button.grid(row=2, column=1, pady=10)

    output_box = scrolledtext.ScrolledText(window, width=60, height=20)
    output_box.grid(row=3, column=0, columnspan=2, padx=10, pady=10)

    watermark_label = tk.Label(window, text="© Aayush --ayush", fg="gray")
    watermark_label.grid(row=4, column=1, sticky='e', padx=10)

    window.mainloop()

if __name__ == "__main__":
    setup_gui()
