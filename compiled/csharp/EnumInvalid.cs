// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class EnumInvalid : KaitaiStruct
    {
        public static EnumInvalid FromFile(string fileName)
        {
            return new EnumInvalid(new KaitaiStream(fileName));
        }


        public enum Animal
        {
            Dog = 102,
            Cat = 124,
        }
        public EnumInvalid(KaitaiStream p__io, KaitaiStruct p__parent = null, EnumInvalid p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _pet1 = ((Animal) m_io.ReadU1());
            _pet2 = ((Animal) m_io.ReadU1());
        }
        private Animal _pet1;
        private Animal _pet2;
        private EnumInvalid m_root;
        private KaitaiStruct m_parent;
        public Animal Pet1 { get { return _pet1; } }
        public Animal Pet2 { get { return _pet2; } }
        public EnumInvalid M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
