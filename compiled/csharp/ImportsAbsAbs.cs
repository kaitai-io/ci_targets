// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ImportsAbsAbs : KaitaiStruct
    {
        public static ImportsAbsAbs FromFile(string fileName)
        {
            return new ImportsAbsAbs(new KaitaiStream(fileName));
        }

        public ImportsAbsAbs(KaitaiStream p__io, KaitaiStruct p__parent = null, ImportsAbsAbs p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _one = m_io.ReadU1();
            _two = new ImportedAndAbs(m_io);
        }
        private byte _one;
        private ImportedAndAbs _two;
        private ImportsAbsAbs m_root;
        private KaitaiStruct m_parent;
        public byte One { get { return _one; } }
        public ImportedAndAbs Two { get { return _two; } }
        public ImportsAbsAbs M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
