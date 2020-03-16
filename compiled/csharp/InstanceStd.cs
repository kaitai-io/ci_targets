// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class InstanceStd : KaitaiStruct
    {
        public static InstanceStd FromFile(string fileName)
        {
            return new InstanceStd(new KaitaiStream(fileName));
        }

        public InstanceStd(KaitaiStream p__io, KaitaiStruct p__parent = null, InstanceStd p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_header = false;
            _read();
        }
        private void _read()
        {
        }
        private bool f_header;
        private string _header;
        public string Header
        {
            get
            {
                if (f_header)
                    return _header;
                long _pos = m_io.Pos;
                m_io.Seek(2);
                _header = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytes(5));
                m_io.Seek(_pos);
                f_header = true;
                return _header;
            }
        }
        private InstanceStd m_root;
        private KaitaiStruct m_parent;
        public InstanceStd M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
