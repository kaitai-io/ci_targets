// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class StrPadTermRoundtrip : KaitaiStruct
    {
        public static StrPadTermRoundtrip FromFile(string fileName)
        {
            return new StrPadTermRoundtrip(new KaitaiStream(fileName));
        }

        public StrPadTermRoundtrip(KaitaiStream p__io, KaitaiStruct p__parent = null, StrPadTermRoundtrip p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _strPad = System.Text.Encoding.GetEncoding("UTF-8").GetString(KaitaiStream.BytesStripRight(m_io.ReadBytes(20), 64));
            _strTerm = System.Text.Encoding.GetEncoding("UTF-8").GetString(KaitaiStream.BytesTerminate(KaitaiStream.BytesStripRight(m_io.ReadBytes(20), 43), 64, false));
            _strTermAndPad = System.Text.Encoding.GetEncoding("UTF-8").GetString(KaitaiStream.BytesTerminate(KaitaiStream.BytesStripRight(m_io.ReadBytes(20), 43), 64, false));
            _strTermInclude = System.Text.Encoding.GetEncoding("UTF-8").GetString(KaitaiStream.BytesTerminate(KaitaiStream.BytesStripRight(m_io.ReadBytes(20), 46), 64, true));
        }
        public string StrPad { get { return _strPad; } }
        public string StrTerm { get { return _strTerm; } }
        public string StrTermAndPad { get { return _strTermAndPad; } }
        public string StrTermInclude { get { return _strTermInclude; } }
        public StrPadTermRoundtrip M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private string _strPad;
        private string _strTerm;
        private string _strTermAndPad;
        private string _strTermInclude;
        private StrPadTermRoundtrip m_root;
        private KaitaiStruct m_parent;
    }
}
