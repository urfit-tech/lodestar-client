export const Button: React.FC<{ onClick: any }> = ({ onClick }) => {
  return (
    <button onClick={onClick} style={{ backgroundColor: 'pink' }}>
      Boop
    </button>
  )
}
