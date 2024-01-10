import React from 'react';
import './driver.css';
import { useState } from 'react';
import Axios from 'axios';

function Customer() {

  const [firstname, setFirstname] = useState("");
  const [lastname, setLastname] = useState("");
  const [mobile, setMobile] = useState("");

  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  
  const [email, setEmail] = useState("");

  const [city, setCity] = useState("");
  const [state, setState] = useState("");
  const [zipcode, setZipcode] = useState("");

  const [loginusername, setLoginusername] = useState("");
  const [loginpassword, setLoginpassword] = useState("");



  const addCustomer = (event) => {
    console.log(firstname + lastname + username + password + mobile + email)
    event.preventDefault(); 
    Axios.post('http://localhost:3001/customer', {
      firstname: firstname,
      lastname: lastname,
      mobile: mobile,
      userName: username,
      password: password,
      email: email,
      city: city, state: state, zipcode: zipcode
    });
  }

  const Login = (event) => {
    //  event.preventDefault(); 
    Axios.post('http://localhost:3001/customerlogin', { loginusername, loginpassword }).then((res) => {
      console.log(res.data)
    })
  }


  return (
    <div className='flex'>
      <div>
        <h2 className='text_color'>Customer Page</h2>
        <h3 className='text_color'>Register</h3>
        <form className='form'>
          <input type='text' name='First_Name' onChange={(event) => { setFirstname(event.target.value) }} placeholder='First Name' />
          <input type='text' name='Last_Name' onChange={(event) => { setLastname(event.target.value) }} placeholder='Last Name' />
          <input type='mobile' name='Mobile' onChange={(event) => { setMobile(event.target.value) }} placeholder='Mobile' />

          <input type='text' name='User_Name' onChange={(event) => { setUsername(event.target.value) }} placeholder='UserName' />
          <input type='text' name='Password' onChange={(event) => { setPassword(event.target.value) }} placeholder='Password' />

          <input type='email' name='Email' onChange={(event) => { setEmail(event.target.value) }} placeholder='Email' />


          <input type='text' name='city' onChange={(event) => { setCity(event.target.value) }} placeholder='City' />
          <input type='text' name='State' onChange={(event) => { setState(event.target.value) }} placeholder='State' />
          <input type='text' name='zip_Code' onChange={(event) => { setZipcode(event.target.value) }} placeholder='Zipcode' />

          <button onClick={addCustomer} type='submit'> submit </button>

        </form>

      </div>

      <div>
        <h2>LogIn</h2>
        <input type='text' name='User_Name' onChange={(event) => { setLoginusername(event.target.value) }} placeholder='UserName' />
        <input type='text' name='Password' onChange={(event) => { setLoginpassword(event.target.value) }} placeholder='Password' />
        <br />   <br />
        <button onClick={Login} >Login</button>
      </div>

    </div>
  )
}

export default Customer;