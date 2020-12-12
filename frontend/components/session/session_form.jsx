import React from 'react';
import { Link } from 'react-router-dom';

class sessionForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            username: '',
            password: ''
        };
        this.handleAction = this.handleAction.bind(this);
        this.demoLogin = this.demoLogin.bind(this);
    }

    update(field) {
        return (e) => {
            this.setState({[field]: e.target.value})
        }
    }

    handleAction(e) {
        e.preventDefault();
        const user = Object.assign({}, this.state);
        this.props.action(user);
    }

    renderErrors() {
        return (
            <ul className='errorList'>
                {this.props.errors.map((error, i) => (
                    <li className='error' key={i}>
                        {error}
                    </li>
                ))}
            </ul>
        )
    }

    demoLogin(e) {
        e.preventDefault();
        this.props.demoLogin();
    }

    render() {
        return (
            <div className='nested-session-page'>
                <div className='session-page'>
                <img className='session-image' src='https://www.wattpad.com/img/landing/hero-devices.png' />  
                    <div>
                        <form className='session-form' onSubmit={this.handleAction}>
                            <h2 className='session-header'>{this.props.formType} to Amppad</h2>
                            <label><span>Username</span></label>
                                <input className='session-input' type='text' value={this.state.username} onChange={this.update('username')}/>
                            <label><span>Password</span></label>
                                <input className='session-input' type='password' value={this.state.password} onChange={this.update('password')}/>
                            {this.renderErrors()}
                            <button className='session-submit' type='submit' value={this.props.formType}>{this.props.formType}</button>
                            <button className='session-submit' type='submit' onClick={this.demoLogin}>Try as Demo User</button>
                            {this.props.formType === 'Login' ?
                                <div>Don't have an account? <Link className='session-signup-link' to='/signup'>Signup</Link> here!</div> :
                                <div>Already have an account? <Link className='session-signup-link' to='login'>Login</Link> here!</div>
                            }
                        </form>
                    </div>
                </div>
            </div>
        )
    };
}

export default sessionForm;