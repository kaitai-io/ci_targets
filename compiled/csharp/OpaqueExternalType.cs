// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class OpaqueExternalType : KaitaiStruct
    {
        public static OpaqueExternalType FromFile(string fileName)
        {
            return new OpaqueExternalType(new KaitaiStream(fileName));
        }

        public OpaqueExternalType(KaitaiStream p__io, KaitaiStruct p__parent = null, OpaqueExternalType p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _hw = new HelloWorld(m_io);
        }
        private HelloWorld _hw;
        private OpaqueExternalType m_root;
        private KaitaiStruct m_parent;
        public HelloWorld Hw { get { return _hw; } }
        public OpaqueExternalType M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
