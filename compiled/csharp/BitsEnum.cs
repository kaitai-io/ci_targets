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

        public BitsEnum(KaitaiStream io, KaitaiStruct parent = null, BitsEnum root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _read();
        }
        private void _read() {
            _one = ((Animal) m_io.ReadBitsInt(4));
            _two = ((Animal) m_io.ReadBitsInt(8));
            _three = ((Animal) m_io.ReadBitsInt(1));
        }
        private Animal _one;
        private Animal _two;
        private Animal _three;
        private BitsEnum m_root;
        private KaitaiStruct m_parent;
        public Animal One { get { return _one; } }
        public Animal Two { get { return _two; } }
        public Animal Three { get { return _three; } }
        public BitsEnum M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
