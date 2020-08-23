// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ImportsAbsRel : KaitaiStruct
    {
        public static ImportsAbsRel FromFile(string fileName)
        {
            return new ImportsAbsRel(new KaitaiStream(fileName));
        }

        public ImportsAbsRel(KaitaiStream p__io, KaitaiStruct p__parent = null, ImportsAbsRel p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _one = m_io.ReadU1();
            _two = new ImportedAndRel(m_io);
        }
        private byte _one;
        private ImportedAndRel _two;
        private ImportsAbsRel m_root;
        private KaitaiStruct m_parent;
        public byte One { get { return _one; } }
        public ImportedAndRel Two { get { return _two; } }
        public ImportsAbsRel M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
