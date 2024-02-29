// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Linq;
using System.Collections.Generic;

namespace Kaitai
{
    public partial class ExprCalcArrayOps : KaitaiStruct
    {
        public static ExprCalcArrayOps FromFile(string fileName)
        {
            return new ExprCalcArrayOps(new KaitaiStream(fileName));
        }

        public ExprCalcArrayOps(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprCalcArrayOps p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_doubleArrayMid = false;
            f_strArraySize = false;
            f_intArrayMid = false;
            f_doubleArrayLast = false;
            f_doubleArrayMax = false;
            f_intArray = false;
            f_doubleArrayMin = false;
            f_strArrayMid = false;
            f_intArrayMin = false;
            f_intArrayMax = false;
            f_intArraySize = false;
            f_doubleArraySize = false;
            f_doubleArray = false;
            f_doubleArrayFirst = false;
            f_intArrayFirst = false;
            f_intArrayLast = false;
            f_strArrayMin = false;
            f_strArray = false;
            f_strArrayFirst = false;
            f_strArrayMax = false;
            f_strArrayLast = false;
            _read();
        }
        private void _read()
        {
        }
        private bool f_doubleArrayMid;
        private double _doubleArrayMid;
        public double DoubleArrayMid
        {
            get
            {
                if (f_doubleArrayMid)
                    return _doubleArrayMid;
                _doubleArrayMid = (double) (DoubleArray[1]);
                f_doubleArrayMid = true;
                return _doubleArrayMid;
            }
        }
        private bool f_strArraySize;
        private int _strArraySize;
        public int StrArraySize
        {
            get
            {
                if (f_strArraySize)
                    return _strArraySize;
                _strArraySize = (int) (StrArray.Count);
                f_strArraySize = true;
                return _strArraySize;
            }
        }
        private bool f_intArrayMid;
        private int _intArrayMid;
        public int IntArrayMid
        {
            get
            {
                if (f_intArrayMid)
                    return _intArrayMid;
                _intArrayMid = (int) (IntArray[1]);
                f_intArrayMid = true;
                return _intArrayMid;
            }
        }
        private bool f_doubleArrayLast;
        private double _doubleArrayLast;
        public double DoubleArrayLast
        {
            get
            {
                if (f_doubleArrayLast)
                    return _doubleArrayLast;
                _doubleArrayLast = (double) (DoubleArray[DoubleArray.Count - 1]);
                f_doubleArrayLast = true;
                return _doubleArrayLast;
            }
        }
        private bool f_doubleArrayMax;
        private double _doubleArrayMax;
        public double DoubleArrayMax
        {
            get
            {
                if (f_doubleArrayMax)
                    return _doubleArrayMax;
                _doubleArrayMax = (double) (DoubleArray.Max());
                f_doubleArrayMax = true;
                return _doubleArrayMax;
            }
        }
        private bool f_intArray;
        private List<int> _intArray;
        public List<int> IntArray
        {
            get
            {
                if (f_intArray)
                    return _intArray;
                _intArray = (List<int>) (new List<int> { 10, 25, 50, 100, 200, 500, 1000 });
                f_intArray = true;
                return _intArray;
            }
        }
        private bool f_doubleArrayMin;
        private double _doubleArrayMin;
        public double DoubleArrayMin
        {
            get
            {
                if (f_doubleArrayMin)
                    return _doubleArrayMin;
                _doubleArrayMin = (double) (DoubleArray.Min());
                f_doubleArrayMin = true;
                return _doubleArrayMin;
            }
        }
        private bool f_strArrayMid;
        private string _strArrayMid;
        public string StrArrayMid
        {
            get
            {
                if (f_strArrayMid)
                    return _strArrayMid;
                _strArrayMid = (string) (StrArray[1]);
                f_strArrayMid = true;
                return _strArrayMid;
            }
        }
        private bool f_intArrayMin;
        private int _intArrayMin;
        public int IntArrayMin
        {
            get
            {
                if (f_intArrayMin)
                    return _intArrayMin;
                _intArrayMin = (int) (IntArray.Min());
                f_intArrayMin = true;
                return _intArrayMin;
            }
        }
        private bool f_intArrayMax;
        private int _intArrayMax;
        public int IntArrayMax
        {
            get
            {
                if (f_intArrayMax)
                    return _intArrayMax;
                _intArrayMax = (int) (IntArray.Max());
                f_intArrayMax = true;
                return _intArrayMax;
            }
        }
        private bool f_intArraySize;
        private int _intArraySize;
        public int IntArraySize
        {
            get
            {
                if (f_intArraySize)
                    return _intArraySize;
                _intArraySize = (int) (IntArray.Count);
                f_intArraySize = true;
                return _intArraySize;
            }
        }
        private bool f_doubleArraySize;
        private int _doubleArraySize;
        public int DoubleArraySize
        {
            get
            {
                if (f_doubleArraySize)
                    return _doubleArraySize;
                _doubleArraySize = (int) (DoubleArray.Count);
                f_doubleArraySize = true;
                return _doubleArraySize;
            }
        }
        private bool f_doubleArray;
        private List<double> _doubleArray;
        public List<double> DoubleArray
        {
            get
            {
                if (f_doubleArray)
                    return _doubleArray;
                _doubleArray = (List<double>) (new List<double> { 10.0, 25.0, 50.0, 100.0, 3.14159 });
                f_doubleArray = true;
                return _doubleArray;
            }
        }
        private bool f_doubleArrayFirst;
        private double _doubleArrayFirst;
        public double DoubleArrayFirst
        {
            get
            {
                if (f_doubleArrayFirst)
                    return _doubleArrayFirst;
                _doubleArrayFirst = (double) (DoubleArray[0]);
                f_doubleArrayFirst = true;
                return _doubleArrayFirst;
            }
        }
        private bool f_intArrayFirst;
        private int _intArrayFirst;
        public int IntArrayFirst
        {
            get
            {
                if (f_intArrayFirst)
                    return _intArrayFirst;
                _intArrayFirst = (int) (IntArray[0]);
                f_intArrayFirst = true;
                return _intArrayFirst;
            }
        }
        private bool f_intArrayLast;
        private int _intArrayLast;
        public int IntArrayLast
        {
            get
            {
                if (f_intArrayLast)
                    return _intArrayLast;
                _intArrayLast = (int) (IntArray[IntArray.Count - 1]);
                f_intArrayLast = true;
                return _intArrayLast;
            }
        }
        private bool f_strArrayMin;
        private string _strArrayMin;
        public string StrArrayMin
        {
            get
            {
                if (f_strArrayMin)
                    return _strArrayMin;
                _strArrayMin = (string) (StrArray.Min());
                f_strArrayMin = true;
                return _strArrayMin;
            }
        }
        private bool f_strArray;
        private List<string> _strArray;
        public List<string> StrArray
        {
            get
            {
                if (f_strArray)
                    return _strArray;
                _strArray = (List<string>) (new List<string> { "un", "deux", "trois", "quatre" });
                f_strArray = true;
                return _strArray;
            }
        }
        private bool f_strArrayFirst;
        private string _strArrayFirst;
        public string StrArrayFirst
        {
            get
            {
                if (f_strArrayFirst)
                    return _strArrayFirst;
                _strArrayFirst = (string) (StrArray[0]);
                f_strArrayFirst = true;
                return _strArrayFirst;
            }
        }
        private bool f_strArrayMax;
        private string _strArrayMax;
        public string StrArrayMax
        {
            get
            {
                if (f_strArrayMax)
                    return _strArrayMax;
                _strArrayMax = (string) (StrArray.Max());
                f_strArrayMax = true;
                return _strArrayMax;
            }
        }
        private bool f_strArrayLast;
        private string _strArrayLast;
        public string StrArrayLast
        {
            get
            {
                if (f_strArrayLast)
                    return _strArrayLast;
                _strArrayLast = (string) (StrArray[StrArray.Count - 1]);
                f_strArrayLast = true;
                return _strArrayLast;
            }
        }
        private ExprCalcArrayOps m_root;
        private KaitaiStruct m_parent;
        public ExprCalcArrayOps M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
