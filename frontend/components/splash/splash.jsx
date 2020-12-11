import React from 'react';
import { Link } from 'react-router-dom';

class Splash extends React.Component {

    render() { 
        return ( 
            <div className='splash-header'>
                {/* <img className='background-image' src='https://static.wattpad.com/img/landing/topRightPortal.svg' /> */}
                <div className='splash-header-text'>
                    <h1 className='splash-header-intro'>Hi, we're Amppad.</h1>
                    <h3 className='splash-header-description'>A clone of the world's most-loved social storytelling platform.</h3>
                    <p className='splash-text'>Amppad connects a global community of 65 readers and writers through the power of story.</p>
                    <div className='splash-login-buttons'>
                        <Link to='/login' className='splash-login-button'>Login</Link>
                        <Link to='/signup' className='splash-login-button'>Sign Up</Link>
                    </div>
                </div>
                <img className='splash-image' src='https://www.wattpad.com/img/landing/hero-devices.png' />
            </div>
        );
    }
}
 
export default Splash;