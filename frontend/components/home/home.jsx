import React from 'react';
// import NavBar from '../navbar/navbar_container';

const Home = ({user, logout}) => {
    const logoutButton = () => {
        
    }

    return (
        <div>
            <button onClick={logout}>Log Out</button>
        </div>
    );
}

export default Home;