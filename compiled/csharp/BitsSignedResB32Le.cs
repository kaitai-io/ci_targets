// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class BitsSignedResB32Le : KaitaiStruct
    {
        public static BitsSignedResB32Le FromFile(string fileName)
        {
            return new BitsSignedResB32Le(new KaitaiStream(fileName));
        }

        public BitsSignedResB32Le(KaitaiStream p__io, KaitaiStruct p__parent = null, BitsSignedResB32Le p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _a = m_io.ReadBitsIntLe(32);
        }
        public ulong A { get { return _a; } }
        public BitsSignedResB32Le M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private ulong _a;
        private BitsSignedResB32Le m_root;
        private KaitaiStruct m_parent;
    }
}
