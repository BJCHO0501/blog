import React from "react"
import styled from "styled-components"

const Wrapper = styled.h1`
  margin-bottom: 24px;
  font-size: ${props => props.size}px;
  font-weight: 700;
  line-height: 1.3;
  color: ${props => props.theme.colors.text};
  word-break: break-all;

  @media (max-width: 768px) {
    font-size: ${props => props.size - 5}px;
  }

  & > a {
    text-decoration: none;
    color: inherit;
    transition: all 0.2s;
  }

  & > a:hover {
    color: ${props => props.theme.colors.secondaryText};
  }
`

const Title = ({ size, children }) => {
  const sizes = {
    sm: "19.2",
    md: "25.6",
    bg: "32",
  }

  return <Wrapper size={sizes[size]}> {children} </Wrapper>
}

export default Title
