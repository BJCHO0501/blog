import PropTypes from "prop-types"
import styled from "styled-components"

const Divider = styled.hr`
  margin-top: ${props => props.mt}px;
  margin-bottom: ${props => props.mb}px;
  border: none;
  border-bottom: 1px solid ${props => props.theme.colors.divider};

  @media (max-width: 768px) {
    margin-top: ${props => (props.mt - 25 > 0 ? props.mt - 25 : 0)}px;
  }
`

Divider.propTypes = {
  mt: PropTypes.string,
  mb: PropTypes.string,
}

Divider.defaultProps = {
  mt: "48",
  mb: "48",
}

export default Divider
