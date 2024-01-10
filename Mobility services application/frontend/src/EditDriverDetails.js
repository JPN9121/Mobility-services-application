import React from 'react';
import { useState } from 'react';


function EditDriverDetails() {

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


  const data = JSON.parse(localStorage.getItem('userDetails'));
  
  const objectKeys = Object.keys(data);

  const handleChange = () => {
    console.log("changed")
  };
  

  return (
    <div>EditDriverDetails
      {data.First_Name}
      {console.log(typeof(data))}

      <form className='form'>
          <input type='text' value={data.First_Name} name='First_Name' onChange={(event) => { setFirstname(event.target.value) }} placeholder='First Name' />
          <input type='text' value={data.Last_Name} name='Last_Name' onChange={(event) => { setLastname(event.target.value) }} placeholder='Last Name' />
          <input type='text' value={data.User_Name} name='User_Name' onChange={(event) => { setUsername(event.target.value) }} placeholder='UserName' />
          <input type='text' value={data.User_Password} name='Password' onChange={(event) => { setPassword(event.target.value) }} placeholder='Password' />
          <input type='mobile' value={data.Mobile_Number} name='Mobile' onChange={(event) => { setMobile(event.target.value) }} placeholder='Mobile' />
          <input type='email' value={data.Email} name='Email' onChange={(event) => { setEmail(event.target.value) }} placeholder='Email' />
        
          <input type='text' value={data.Vehicle_Type} name='Vehicle_Type' onChange={(event) => { setVehicletype(event.target.value) }} placeholder='Vehile_Type' />
       
          <input type='text' value={data.Vehicle_Number} name='Vehicle_Number' onChange={(event) => { setVehiclenumber(event.target.value) }} placeholder='Vehicle Number' />
          <input type='text' value={data.City} name='city' onChange={(event) => { setCity(event.target.value) }} placeholder='City' />
          <input type='text' value={data.State} name='State' onChange={(event) => { setState(event.target.value) }} placeholder='State' />
          <input type='text' value={data.Zip_Code} name='zip_Code' onChange={(event) => { setZipcode(event.target.value) }} placeholder='Zipcode' />

          <button onClick={handleChange} type='submit'> save Changes </button>

        </form>




    </div>
  )
}

export default EditDriverDetails