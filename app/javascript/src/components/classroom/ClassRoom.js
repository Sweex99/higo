import React from "react";

const ClassRoom = (props) => {
  const s = `Naming: ${props.title}  --  id: ${props.id}`;
  const t = 'Description pitcheer, need clarify with you and lets try to dusccus about my opinion about future tasks etc.';

  return(
    <li>{s} {t}</li>
  )
}

export default ClassRoom;