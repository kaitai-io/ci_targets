// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class Imported1 : KaitaiStruct
    {
        public static Imported1 FromFile(string fileName)
        {
            return new Imported1(new KaitaiStream(fileName));
        }

        public Imported1(KaitaiStream p__io, KaitaiStruct p__parent = null, Imported1 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _one = m_io.ReadU1();
            _two = new Imported2(m_io);
        }
        private byte _one;
        private Imported2 _two;
        private Imported1 m_root;
        private KaitaiStruct m_parent;
        public byte One { get { return _one; } }
        public Imported2 Two { get { return _two; } }
        public Imported1 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
