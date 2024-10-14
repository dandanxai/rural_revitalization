import axios from "axios";

const service = axios.create({
    baseURL : 'http://localhost:8081'
})

export default service