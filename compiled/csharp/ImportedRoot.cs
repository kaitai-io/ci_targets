// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ImportedRoot : KaitaiStruct
    {
        public static ImportedRoot FromFile(string fileName)
        {
            return new ImportedRoot(new KaitaiStream(fileName));
        }

        public ImportedRoot(KaitaiStream p__io, KaitaiStruct p__parent = null, ImportedRoot p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _one = m_io.ReadU1();
        }
        private byte _one;
        private ImportedRoot m_root;
        private KaitaiStruct m_parent;
        public byte One { get { return _one; } }
        public ImportedRoot M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
