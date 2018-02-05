// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class OpaqueWithParam : KaitaiStruct
    {
        public static OpaqueWithParam FromFile(string fileName)
        {
            return new OpaqueWithParam(new KaitaiStream(fileName));
        }

        public OpaqueWithParam(KaitaiStream p__io, KaitaiStruct p__parent = null, OpaqueWithParam p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _one = new ParamsDef(5, true, m_io);
        }
        private ParamsDef _one;
        private OpaqueWithParam m_root;
        private KaitaiStruct m_parent;
        public ParamsDef One { get { return _one; } }
        public OpaqueWithParam M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
