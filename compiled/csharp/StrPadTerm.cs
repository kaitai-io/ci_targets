// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class StrPadTerm : KaitaiStruct
    {
        public static StrPadTerm FromFile(string fileName)
        {
            return new StrPadTerm(new KaitaiStream(fileName));
        }

        public StrPadTerm(KaitaiStream io, KaitaiStruct parent = null, StrPadTerm root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _parse();
        }

        private void _parse()
        {
            _strPad = System.Text.Encoding.GetEncoding("UTF-8").GetString(KaitaiStream.BytesStripRight(m_io.ReadBytes(20), 64));
            _strTerm = System.Text.Encoding.GetEncoding("UTF-8").GetString(KaitaiStream.BytesTerminate(m_io.ReadBytes(20), 64, false));
            _strTermAndPad = System.Text.Encoding.GetEncoding("UTF-8").GetString(KaitaiStream.BytesTerminate(KaitaiStream.BytesStripRight(m_io.ReadBytes(20), 43), 64, false));
            _strTermInclude = System.Text.Encoding.GetEncoding("UTF-8").GetString(KaitaiStream.BytesTerminate(m_io.ReadBytes(20), 64, true));
        }
        private string _strPad;
        private string _strTerm;
        private string _strTermAndPad;
        private string _strTermInclude;
        private StrPadTerm m_root;
        private KaitaiStruct m_parent;
        public string StrPad { get { return _strPad; } }
        public string StrTerm { get { return _strTerm; } }
        public string StrTermAndPad { get { return _strTermAndPad; } }
        public string StrTermInclude { get { return _strTermInclude; } }
        public StrPadTerm M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
