import React from 'react';

class StoryNavbar extends React.Component {
    constructor(props) {
        super(props);
        // props should give ordered chapters and story
    }

    render() { 
        return (
            <TableOfContents />
            // <EditPart />
            // <AddtoCollection />
            // <Vote />
        );
    }
}
 
export default StoryNavbar;