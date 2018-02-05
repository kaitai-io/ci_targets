// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ParamsDef : KaitaiStruct
    {
        public ParamsDef(uint p_len, bool p_hasTrailer, KaitaiStream p__io, KaitaiStruct p__parent = null, ParamsDef p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _len = p_len;
            _hasTrailer = p_hasTrailer;
            _read();
        }
        private void _read()
        {
            _buf = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytes(Len));
            if (HasTrailer) {
                _trailer = m_io.ReadU1();
            }
        }
        private string _buf;
        private byte? _trailer;
        private uint _len;
        private bool _hasTrailer;
        private ParamsDef m_root;
        private KaitaiStruct m_parent;
        public string Buf { get { return _buf; } }
        public byte? Trailer { get { return _trailer; } }
        public uint Len { get { return _len; } }
        public bool HasTrailer { get { return _hasTrailer; } }
        public ParamsDef M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
