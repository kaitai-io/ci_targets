// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ImportsParamsDefUsertypeImported : KaitaiStruct
    {
        public static ImportsParamsDefUsertypeImported FromFile(string fileName)
        {
            return new ImportsParamsDefUsertypeImported(new KaitaiStream(fileName));
        }

        public ImportsParamsDefUsertypeImported(KaitaiStream p__io, KaitaiStruct p__parent = null, ImportsParamsDefUsertypeImported p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _hw = new HelloWorld(m_io);
            _two = new ParamsDefUsertypeImported(Hw, m_io);
        }
        private HelloWorld _hw;
        private ParamsDefUsertypeImported _two;
        private ImportsParamsDefUsertypeImported m_root;
        private KaitaiStruct m_parent;
        public HelloWorld Hw { get { return _hw; } }
        public ParamsDefUsertypeImported Two { get { return _two; } }
        public ImportsParamsDefUsertypeImported M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
