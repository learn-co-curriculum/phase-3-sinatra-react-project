import axios from "axios";

const BASE_URL = "http://localhost:4000";

export const getUsers = async () => {
  const response = await axios.get(`${BASE_URL}/users`);
  return response.data;
};

export const getUser = async (id) => {
  const response = await axios.get(`${BASE_URL}/users/${id}`);
  return response.data;
};

export const createUser = async (user) => {
  const response = await axios.post(`${BASE_URL}/users`, user);
  return response.data;
};

export const getTodos = async (userId) => {
  const response = await axios.get(`${BASE_URL}/users/${userId}/todos`);
  return response.data;
};

export const createTodo = async (userId, todo) => {
  const response = await axios.post(`${BASE_URL}/users/${userId}/todos`, todo);
  return response.data;
};
