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
        public EnumForUnknownId(KaitaiStream p__io, KaitaiStruct p__parent = null, EnumForUnknownId p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
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
