// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class StrEos : KaitaiStruct
    {
        public static StrEos FromFile(string fileName)
        {
            return new StrEos(new KaitaiStream(fileName));
        }

        public StrEos(KaitaiStream p__io, KaitaiStruct p__parent = null, StrEos p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read() {
            _str = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytesFull());
        }
        private string _str;
        private StrEos m_root;
        private KaitaiStruct m_parent;
        public string Str { get { return _str; } }
        public StrEos M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
