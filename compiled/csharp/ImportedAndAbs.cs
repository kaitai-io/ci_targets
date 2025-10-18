// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ImportedAndAbs : KaitaiStruct
    {
        public static ImportedAndAbs FromFile(string fileName)
        {
            return new ImportedAndAbs(new KaitaiStream(fileName));
        }

        public ImportedAndAbs(KaitaiStream p__io, KaitaiStruct p__parent = null, ImportedAndAbs p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _one = m_io.ReadU1();
            _two = new ImportedRoot(m_io);
        }
        public byte One { get { return _one; } }
        public ImportedRoot Two { get { return _two; } }
        public ImportedAndAbs M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private byte _one;
        private ImportedRoot _two;
        private ImportedAndAbs m_root;
        private KaitaiStruct m_parent;
    }
}
