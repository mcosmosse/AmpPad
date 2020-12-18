import { connect } from 'react-redux';
import sessionForm from './session_form';
import { signup, login } from '../../actions/session_actions';

const mSTP = (state) => {
    return {
        formType: 'Sign Up',
        errors: state.errors.session
    };
};

const mDTP = (dispatch) => ({
    action: (user) => dispatch(signup(user)),
    demoLogin: () => dispatch(login({ username: "DemoUser", password: "demouser" }))
});

export default connect(mSTP, mDTP)(sessionForm);