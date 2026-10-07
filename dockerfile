# Gunakan image Node.js versi 18 (varian alpine untuk ukuran kecil)
FROM node:18-alpine

# Set working directory di dalam container
WORKDIR /app

# Copy package.json dan package-lock.json untuk instalasi dependensi
COPY package*.json ./

# Install dependensi
RUN npm install

# Copy semua file aplikasi
COPY . .

# Expose port 3000 (sesuai dengan app.js)
EXPOSE 3000

# Perintah untuk menjalankan aplikasi
CMD ["node", "app.js"]