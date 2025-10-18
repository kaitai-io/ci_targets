// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ImportsCastToImported2 : KaitaiStruct
    {
        public static ImportsCastToImported2 FromFile(string fileName)
        {
            return new ImportsCastToImported2(new KaitaiStream(fileName));
        }

        public ImportsCastToImported2(KaitaiStream p__io, KaitaiStruct p__parent = null, ImportsCastToImported2 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _hw = new HelloWorld(m_io);
            _two = new CastToImported2(Hw, m_io);
        }
        public HelloWorld Hw { get { return _hw; } }
        public CastToImported2 Two { get { return _two; } }
        public ImportsCastToImported2 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private HelloWorld _hw;
        private CastToImported2 _two;
        private ImportsCastToImported2 m_root;
        private KaitaiStruct m_parent;
    }
}
