// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class CombineEnum : KaitaiStruct
    {
        public static CombineEnum FromFile(string fileName)
        {
            return new CombineEnum(new KaitaiStream(fileName));
        }


        public enum Animal
        {
            Pig = 7,
            Horse = 12,
        }
        public CombineEnum(KaitaiStream p__io, KaitaiStruct p__parent = null, CombineEnum p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_enumU4U2 = false;
            _read();
        }
        private void _read()
        {
            _enumU4 = ((Animal) m_io.ReadU4le());
            _enumU2 = ((Animal) m_io.ReadU2le());
        }
        public Animal EnumU4U2
        {
            get
            {
                if (f_enumU4U2)
                    return _enumU4U2;
                f_enumU4U2 = true;
                _enumU4U2 = (Animal) ((false ? EnumU4 : EnumU2));
                return _enumU4U2;
            }
        }
        public Animal EnumU4 { get { return _enumU4; } }
        public Animal EnumU2 { get { return _enumU2; } }
        public CombineEnum M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private bool f_enumU4U2;
        private Animal _enumU4U2;
        private Animal _enumU4;
        private Animal _enumU2;
        private CombineEnum m_root;
        private KaitaiStruct m_parent;
    }
}
