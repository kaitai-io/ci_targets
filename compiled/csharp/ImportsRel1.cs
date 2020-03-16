// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ImportsRel1 : KaitaiStruct
    {
        public static ImportsRel1 FromFile(string fileName)
        {
            return new ImportsRel1(new KaitaiStream(fileName));
        }

        public ImportsRel1(KaitaiStream p__io, KaitaiStruct p__parent = null, ImportsRel1 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _one = m_io.ReadU1();
            _two = new Imported1(m_io);
        }
        private byte _one;
        private Imported1 _two;
        private ImportsRel1 m_root;
        private KaitaiStruct m_parent;
        public byte One { get { return _one; } }
        public Imported1 Two { get { return _two; } }
        public ImportsRel1 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
