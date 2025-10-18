// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class TermStrzUtf16V1 : KaitaiStruct
    {
        public static TermStrzUtf16V1 FromFile(string fileName)
        {
            return new TermStrzUtf16V1(new KaitaiStream(fileName));
        }

        public TermStrzUtf16V1(KaitaiStream p__io, KaitaiStruct p__parent = null, TermStrzUtf16V1 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _s1 = System.Text.Encoding.GetEncoding("UTF-16LE").GetString(m_io.ReadBytesTermMulti(new byte[] { 0, 0 }, false, true, true));
            _s2 = System.Text.Encoding.GetEncoding("UTF-16LE").GetString(m_io.ReadBytesTermMulti(new byte[] { 0, 0 }, false, false, true));
            _term = m_io.ReadU2le();
            _s3 = System.Text.Encoding.GetEncoding("UTF-16LE").GetString(m_io.ReadBytesTermMulti(new byte[] { 0, 0 }, true, true, true));
        }
        public string S1 { get { return _s1; } }
        public string S2 { get { return _s2; } }
        public ushort Term { get { return _term; } }
        public string S3 { get { return _s3; } }
        public TermStrzUtf16V1 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private string _s1;
        private string _s2;
        private ushort _term;
        private string _s3;
        private TermStrzUtf16V1 m_root;
        private KaitaiStruct m_parent;
    }
}
