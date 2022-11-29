import axios from "axios";

window.axios = axios
axios.defaults.withCredentials = false
// axios.defaults.baseURL = "http://localhost:3000/api"
const backendUrl = "http://" + window.location.hostname.toString() + ":3000/api"
axios.defaults.baseURL = backendUrl

