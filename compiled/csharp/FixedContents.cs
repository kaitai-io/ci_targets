// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class FixedContents : KaitaiStruct
    {
        public static FixedContents FromFile(string fileName)
        {
            return new FixedContents(new KaitaiStream(fileName));
        }

        public FixedContents(KaitaiStream p__io, KaitaiStruct p__parent = null, FixedContents p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _normal = m_io.ReadBytes(6);
            _highBit8 = m_io.ReadBytes(2);
        }
        private byte[] _normal;
        private byte[] _highBit8;
        private FixedContents m_root;
        private KaitaiStruct m_parent;
        public byte[] Normal { get { return _normal; } }
        public byte[] HighBit8 { get { return _highBit8; } }
        public FixedContents M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
