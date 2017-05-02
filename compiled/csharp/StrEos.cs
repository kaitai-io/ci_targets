// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class StrEos : KaitaiStruct
    {
        public static StrEos FromFile(string fileName)
        {
            return new StrEos(new KaitaiStream(fileName));
        }

        public StrEos(KaitaiStream io, KaitaiStruct parent = null, StrEos root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _parse();
        }

        private void _parse()
        {
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
