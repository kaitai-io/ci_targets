// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class BitsEnum : KaitaiStruct
    {
        public static BitsEnum FromFile(string fileName)
        {
            return new BitsEnum(new KaitaiStream(fileName));
        }


        public enum Animal
        {
            Cat = 0,
            Dog = 1,
            Horse = 4,
            Platypus = 5,
        }
        public BitsEnum(KaitaiStream p__io, KaitaiStruct p__parent = null, BitsEnum p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _one = ((Animal) m_io.ReadBitsIntBe(4));
            _two = ((Animal) m_io.ReadBitsIntBe(8));
            _three = ((Animal) m_io.ReadBitsIntBe(1));
        }
        public Animal One { get { return _one; } }
        public Animal Two { get { return _two; } }
        public Animal Three { get { return _three; } }
        public BitsEnum M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private Animal _one;
        private Animal _two;
        private Animal _three;
        private BitsEnum m_root;
        private KaitaiStruct m_parent;
    }
}
