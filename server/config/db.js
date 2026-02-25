// ===== Imports =====
const mysql = require('mysql2/promise')
const mongoose = require('mongoose')





// ===== Connect Function =====
const connectDB = async () => {
    try {

        const pool = mysql.createPool({
            host: process.env.DB_HOST,
            user: process.env.DB_USER,
            password: process.env.DB_PASSWORD,
            database: process.env.DB_NAME,
            waitForConnections: true,
            connectionLimit: 10,
            queueLimit: 0
        })

        global.mysqlPool = pool
        global.dbAvailable = true

        console.log('✅ MySQL Connected')





        try {

            await mongoose.connect(process.env.MONGO_URI, {
                serverSelectionTimeoutMS: 5000,
                socketTimeoutMS: 45000
            })

            global.mongoAvailable = true
            console.log('✅ MongoDB Connected')

        } catch (mongoErr) {

            global.mongoAvailable = false
            console.error('❌ MongoDB Failed:', mongoErr.message)
        }





        return pool

    } catch (err) {

        global.dbAvailable = false
        console.error('❌ MySQL Failed:', err.message)
    }
}





// ===== Get Pool =====
const getPool = () => {
    return global.mysqlPool
}





module.exports = { connectDB, getPool }
