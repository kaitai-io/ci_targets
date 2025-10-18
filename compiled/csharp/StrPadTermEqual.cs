// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class StrPadTermEqual : KaitaiStruct
    {
        public static StrPadTermEqual FromFile(string fileName)
        {
            return new StrPadTermEqual(new KaitaiStream(fileName));
        }

        public StrPadTermEqual(KaitaiStream p__io, KaitaiStruct p__parent = null, StrPadTermEqual p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _s1 = System.Text.Encoding.GetEncoding("UTF-8").GetString(KaitaiStream.BytesTerminate(KaitaiStream.BytesStripRight(m_io.ReadBytes(20), 64), 64, false));
            _s2 = System.Text.Encoding.GetEncoding("UTF-8").GetString(KaitaiStream.BytesTerminate(KaitaiStream.BytesStripRight(m_io.ReadBytes(20), 43), 64, true));
            _s3 = System.Text.Encoding.GetEncoding("UTF-8").GetString(KaitaiStream.BytesTerminate(KaitaiStream.BytesStripRight(m_io.ReadBytes(20), 43), 43, false));
            _s4 = System.Text.Encoding.GetEncoding("UTF-8").GetString(KaitaiStream.BytesTerminate(KaitaiStream.BytesStripRight(m_io.ReadBytes(20), 46), 46, true));
        }
        public string S1 { get { return _s1; } }
        public string S2 { get { return _s2; } }
        public string S3 { get { return _s3; } }
        public string S4 { get { return _s4; } }
        public StrPadTermEqual M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private string _s1;
        private string _s2;
        private string _s3;
        private string _s4;
        private StrPadTermEqual m_root;
        private KaitaiStruct m_parent;
    }
}
