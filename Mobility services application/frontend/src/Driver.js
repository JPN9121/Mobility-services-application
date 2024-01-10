import React from 'react';
import './driver.css';
import { useState } from 'react';
import Axios from 'axios';
import { useNavigate } from 'react-router-dom';

function Driver() {

  const navigate = useNavigate();

  const [firstname, setFirstname] = useState("");
  const [lastname, setLastname] = useState("");
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [mobile, setMobile] = useState("");
  const [email, setEmail] = useState("");
  const [vehicletype, setVehicletype] = useState("");
  const [vehiclenumber, setVehiclenumber] = useState("");
  const [city, setCity] = useState("");
  const [state, setState] = useState("");
  const [zipcode, setZipcode] = useState("");

  const [loginusername, setLoginusername] = useState("");
  const [loginpassword, setLoginpassword] = useState("");


  const [userDetails, setUserDetails] = useState(null);

  const addDriver = (event) => {
    console.log(firstname + lastname + username + password + mobile + email + vehicletype)
    // event.preventDefault(); 
    Axios.post('http://localhost:3001/driver', {
      firstname: firstname, lastname: lastname, userName: username, password: password,
      mobile: mobile, email: email, vehicletype: vehicletype, vehiclenumber: vehiclenumber,
      city: city, state: state, zipcode: zipcode
    });
  }

  const Login = (event) => {
    event.preventDefault();
    Axios.post('http://localhost:3001/driverlogin', { loginusername, loginpassword }).then((res) => {
      localStorage.setItem('userDetails', JSON.stringify(res.data[0]));  
    console.log(res.data);
      setUserDetails(res.data);
      localStorage.setItem('userDetails', JSON.stringify(res.data[0]));
      console.log(localStorage.getItem('userDetails'));
      // console.log(storedUserDetails)

    });
    navigate('/edit');
  }


  return (
    <div className='flex'>
      <div>
        <h2 className='text_color'>Driver Page</h2>
        <h3 className='text_color'>Register</h3>
        <form className='form'>
          <input type='text' name='First_Name' onChange={(event) => { setFirstname(event.target.value) }} placeholder='First Name' />
          <input type='text' name='Last_Name' onChange={(event) => { setLastname(event.target.value) }} placeholder='Last Name' />
          <input type='text' name='User_Name' onChange={(event) => { setUsername(event.target.value) }} placeholder='UserName' />
          <input type='text' name='Password' onChange={(event) => { setPassword(event.target.value) }} placeholder='Password' />
          <input type='mobile' name='Mobile' onChange={(event) => { setMobile(event.target.value) }} placeholder='Mobile' />
          <input type='email' name='Email' onChange={(event) => { setEmail(event.target.value) }} placeholder='Email' />
          <select name="Vehile_Type" onChange={(event) => { setVehicletype(event.target.value) }}>
            <option disabled value="Vehicle Type">Select Vehicle Type</option>
            <option value="Sedan">Sedan</option>
            <option value="SUV">SUV</option>
            <option value="Truck">Truck</option>
          </select>
          <input type='text' name='Vehicle_Number' onChange={(event) => { setVehiclenumber(event.target.value) }} placeholder='Vehicle Number' />
          <input type='text' name='city' onChange={(event) => { setCity(event.target.value) }} placeholder='City' />
          <input type='text' name='State' onChange={(event) => { setState(event.target.value) }} placeholder='State' />
          <input type='text' name='zip_Code' onChange={(event) => { setZipcode(event.target.value) }} placeholder='Zipcode' />

          <button onClick={addDriver} type='submit'> submit </button>

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

export default Driver