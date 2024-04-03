// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ImportsParamsDefEnumImported : KaitaiStruct
    {
        public static ImportsParamsDefEnumImported FromFile(string fileName)
        {
            return new ImportsParamsDefEnumImported(new KaitaiStream(fileName));
        }

        public ImportsParamsDefEnumImported(KaitaiStream p__io, KaitaiStruct p__parent = null, ImportsParamsDefEnumImported p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _one = new EnumImportSeq(m_io);
            _two = new ParamsDefEnumImported(One.Pet1, One.Pet2, m_io);
        }
        private EnumImportSeq _one;
        private ParamsDefEnumImported _two;
        private ImportsParamsDefEnumImported m_root;
        private KaitaiStruct m_parent;
        public EnumImportSeq One { get { return _one; } }
        public ParamsDefEnumImported Two { get { return _two; } }
        public ImportsParamsDefEnumImported M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
