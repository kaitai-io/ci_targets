// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class Imported2 : KaitaiStruct
    {
        public static Imported2 FromFile(string fileName)
        {
            return new Imported2(new KaitaiStream(fileName));
        }

        public Imported2(KaitaiStream p__io, KaitaiStruct p__parent = null, Imported2 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _one = m_io.ReadU1();
        }
        public byte One { get { return _one; } }
        public Imported2 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private byte _one;
        private Imported2 m_root;
        private KaitaiStruct m_parent;
    }
}
