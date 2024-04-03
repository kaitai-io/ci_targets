// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ImportsCastToImported : KaitaiStruct
    {
        public static ImportsCastToImported FromFile(string fileName)
        {
            return new ImportsCastToImported(new KaitaiStream(fileName));
        }

        public ImportsCastToImported(KaitaiStream p__io, KaitaiStruct p__parent = null, ImportsCastToImported p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _hw = new HelloWorld(m_io);
            _two = new CastToImported(Hw, m_io);
        }
        private HelloWorld _hw;
        private CastToImported _two;
        private ImportsCastToImported m_root;
        private KaitaiStruct m_parent;
        public HelloWorld Hw { get { return _hw; } }
        public CastToImported Two { get { return _two; } }
        public ImportsCastToImported M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
