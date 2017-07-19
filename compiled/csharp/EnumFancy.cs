// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class EnumFancy : KaitaiStruct
    {
        public static EnumFancy FromFile(string fileName)
        {
            return new EnumFancy(new KaitaiStream(fileName));
        }

        public enum Animal
        {
            Dog = 4,
            Cat = 7,
            Chicken = 12,
        }

        public EnumFancy(KaitaiStream io, KaitaiStruct parent = null, EnumFancy root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _read();
        }
        private void _read() {
            _pet1 = ((Animal) m_io.ReadU4le());
            _pet2 = ((Animal) m_io.ReadU4le());
            }
        private Animal _pet1;
        private Animal _pet2;
        private EnumFancy m_root;
        private KaitaiStruct m_parent;
        public Animal Pet1 { get { return _pet1; } }
        public Animal Pet2 { get { return _pet2; } }
        public EnumFancy M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
