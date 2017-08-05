// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class TermBytes : KaitaiStruct
    {
        public static TermBytes FromFile(string fileName)
        {
            return new TermBytes(new KaitaiStream(fileName));
        }

        public TermBytes(KaitaiStream p__io, KaitaiStruct p__parent = null, TermBytes p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read() {
            _s1 = m_io.ReadBytesTerm(124, false, true, true);
            _s2 = m_io.ReadBytesTerm(124, false, false, true);
            _s3 = m_io.ReadBytesTerm(64, true, true, true);
        }
        private byte[] _s1;
        private byte[] _s2;
        private byte[] _s3;
        private TermBytes m_root;
        private KaitaiStruct m_parent;
        public byte[] S1 { get { return _s1; } }
        public byte[] S2 { get { return _s2; } }
        public byte[] S3 { get { return _s3; } }
        public TermBytes M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
