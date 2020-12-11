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

    render() {
        return (
            <div>
                <h1>{this.props.formType}</h1>
                <form onSubmit={this.handleAction}>
                    <label>Username
                        <input type='text' value={this.state.username} onChange={this.update('username')}/>
                    </label>
                    <label>Password
                        <input type='password' value={this.state.password} onChange={this.update('password')}/>
                    </label>
                    {this.renderErrors()}
                    <button type='submit' value={this.props.formType}>{this.props.formType}</button>
                </form>
                <button type='submit' onClick={() => this.props.demoLogin()}>Try as Demo User</button>
            </div>
        )
    };
}

export default sessionForm;