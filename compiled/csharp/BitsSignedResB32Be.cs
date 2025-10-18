// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class BitsSignedResB32Be : KaitaiStruct
    {
        public static BitsSignedResB32Be FromFile(string fileName)
        {
            return new BitsSignedResB32Be(new KaitaiStream(fileName));
        }

        public BitsSignedResB32Be(KaitaiStream p__io, KaitaiStruct p__parent = null, BitsSignedResB32Be p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _a = m_io.ReadBitsIntBe(32);
        }
        public ulong A { get { return _a; } }
        public BitsSignedResB32Be M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private ulong _a;
        private BitsSignedResB32Be m_root;
        private KaitaiStruct m_parent;
    }
}
