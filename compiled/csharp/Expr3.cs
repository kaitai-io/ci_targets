// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class Expr3 : KaitaiStruct
    {
        public static Expr3 FromFile(string fileName)
        {
            return new Expr3(new KaitaiStream(fileName));
        }

        public Expr3(KaitaiStream p__io, KaitaiStruct p__parent = null, Expr3 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_four = false;
            f_isStrEq = false;
            f_isStrGe = false;
            f_isStrGt = false;
            f_isStrLe = false;
            f_isStrLt = false;
            f_isStrLt2 = false;
            f_isStrNe = false;
            f_testNot = false;
            f_three = false;
            _read();
        }
        private void _read()
        {
            _one = m_io.ReadU1();
            _two = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytes(3));
        }
        private bool f_four;
        private string _four;
        public string Four
        {
            get
            {
                if (f_four)
                    return _four;
                f_four = true;
                _four = (string) (("_" + Two) + "_");
                return _four;
            }
        }
        private bool f_isStrEq;
        private bool _isStrEq;
        public bool IsStrEq
        {
            get
            {
                if (f_isStrEq)
                    return _isStrEq;
                f_isStrEq = true;
                _isStrEq = (bool) (Two == "ACK");
                return _isStrEq;
            }
        }
        private bool f_isStrGe;
        private bool _isStrGe;
        public bool IsStrGe
        {
            get
            {
                if (f_isStrGe)
                    return _isStrGe;
                f_isStrGe = true;
                _isStrGe = (bool) ((Two.CompareTo("ACK2") >= 0));
                return _isStrGe;
            }
        }
        private bool f_isStrGt;
        private bool _isStrGt;
        public bool IsStrGt
        {
            get
            {
                if (f_isStrGt)
                    return _isStrGt;
                f_isStrGt = true;
                _isStrGt = (bool) ((Two.CompareTo("ACK2") > 0));
                return _isStrGt;
            }
        }
        private bool f_isStrLe;
        private bool _isStrLe;
        public bool IsStrLe
        {
            get
            {
                if (f_isStrLe)
                    return _isStrLe;
                f_isStrLe = true;
                _isStrLe = (bool) ((Two.CompareTo("ACK2") <= 0));
                return _isStrLe;
            }
        }
        private bool f_isStrLt;
        private bool _isStrLt;
        public bool IsStrLt
        {
            get
            {
                if (f_isStrLt)
                    return _isStrLt;
                f_isStrLt = true;
                _isStrLt = (bool) ((Two.CompareTo("ACK2") < 0));
                return _isStrLt;
            }
        }
        private bool f_isStrLt2;
        private bool _isStrLt2;
        public bool IsStrLt2
        {
            get
            {
                if (f_isStrLt2)
                    return _isStrLt2;
                f_isStrLt2 = true;
                _isStrLt2 = (bool) ((Three.CompareTo(Two) < 0));
                return _isStrLt2;
            }
        }
        private bool f_isStrNe;
        private bool _isStrNe;
        public bool IsStrNe
        {
            get
            {
                if (f_isStrNe)
                    return _isStrNe;
                f_isStrNe = true;
                _isStrNe = (bool) (Two != "ACK");
                return _isStrNe;
            }
        }
        private bool f_testNot;
        private bool _testNot;
        public bool TestNot
        {
            get
            {
                if (f_testNot)
                    return _testNot;
                f_testNot = true;
                _testNot = (bool) (!(false));
                return _testNot;
            }
        }
        private bool f_three;
        private string _three;
        public string Three
        {
            get
            {
                if (f_three)
                    return _three;
                f_three = true;
                _three = (string) ("@" + Two);
                return _three;
            }
        }
        private byte _one;
        private string _two;
        private Expr3 m_root;
        private KaitaiStruct m_parent;
        public byte One { get { return _one; } }
        public string Two { get { return _two; } }
        public Expr3 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
