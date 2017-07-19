// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class EnumForUnknownId : KaitaiStruct
    {
        public static EnumForUnknownId FromFile(string fileName)
        {
            return new EnumForUnknownId(new KaitaiStream(fileName));
        }

        public enum Animal
        {
            Dog = 4,
            Cat = 7,
            Chicken = 12,
        }

        public EnumForUnknownId(KaitaiStream io, KaitaiStruct parent = null, EnumForUnknownId root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _read();
        }
        private void _read() {
            _one = ((Animal) m_io.ReadU1());
            }
        private Animal _one;
        private EnumForUnknownId m_root;
        private KaitaiStruct m_parent;
        public Animal One { get { return _one; } }
        public EnumForUnknownId M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
