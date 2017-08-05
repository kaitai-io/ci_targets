// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class Expr0 : KaitaiStruct
    {
        public static Expr0 FromFile(string fileName)
        {
            return new Expr0(new KaitaiStream(fileName));
        }

        public Expr0(KaitaiStream p__io, KaitaiStruct p__parent = null, Expr0 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_mustBeF7 = false;
            f_mustBeAbc123 = false;
            _read();
        }
        private void _read() {
            _lenOf1 = m_io.ReadU2le();
        }
        private bool f_mustBeF7;
        private int _mustBeF7;
        public int MustBeF7
        {
            get
            {
                if (f_mustBeF7)
                    return _mustBeF7;
                _mustBeF7 = (int) ((7 + 240));
                f_mustBeF7 = true;
                return _mustBeF7;
            }
        }
        private bool f_mustBeAbc123;
        private string _mustBeAbc123;
        public string MustBeAbc123
        {
            get
            {
                if (f_mustBeAbc123)
                    return _mustBeAbc123;
                _mustBeAbc123 = (string) ("abc" + "123");
                f_mustBeAbc123 = true;
                return _mustBeAbc123;
            }
        }
        private ushort _lenOf1;
        private Expr0 m_root;
        private KaitaiStruct m_parent;
        public ushort LenOf1 { get { return _lenOf1; } }
        public Expr0 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
