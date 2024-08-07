// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class StrPadTermUtf16 : KaitaiStruct
    {
        public static StrPadTermUtf16 FromFile(string fileName)
        {
            return new StrPadTermUtf16(new KaitaiStream(fileName));
        }

        public StrPadTermUtf16(KaitaiStream p__io, KaitaiStruct p__parent = null, StrPadTermUtf16 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _strTerm = System.Text.Encoding.GetEncoding("UTF-16LE").GetString(KaitaiStream.BytesTerminateMulti(m_io.ReadBytes(10), new byte[] { 0, 0 }, false));
            _strTermInclude = System.Text.Encoding.GetEncoding("UTF-16LE").GetString(KaitaiStream.BytesTerminateMulti(m_io.ReadBytes(10), new byte[] { 0, 0 }, true));
            _strTermAndPad = System.Text.Encoding.GetEncoding("UTF-16LE").GetString(KaitaiStream.BytesTerminateMulti(KaitaiStream.BytesStripRight(m_io.ReadBytes(9), 43), new byte[] { 0, 0 }, false));
        }
        private string _strTerm;
        private string _strTermInclude;
        private string _strTermAndPad;
        private StrPadTermUtf16 m_root;
        private KaitaiStruct m_parent;
        public string StrTerm { get { return _strTerm; } }
        public string StrTermInclude { get { return _strTermInclude; } }
        public string StrTermAndPad { get { return _strTermAndPad; } }
        public StrPadTermUtf16 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
